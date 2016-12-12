$(document).on('ready',function(){
	
	var equipo=$('#equipo-page');

	if(equipo.length){

		Vue.filter('split', function (value) {
		    if(!value) return ''
			value=value.toString().trim();
			return _.split(value,' ',1)[0];
		});

		Vue.component('equipo_item',{
			template:'#equipo_item-temp',
			props:['item'],
			methods:{
				vistaPrevia:function(){
					this.$emit('previa',this.item);
				}
			}

		});

		new Vue({
			el:'#equipo-page',

			data:{
				roles:[],
				equipo_all:[],
				equipo:[],
				rol_seleccionado:'',
				equipo_seleccionado:{
					imagen:{url:''}
				},
				previsualizar:false
			},

			created:function(){
				this.cargarRoles();
			},

			methods:{
				cargarRoles:function(){
					this.$http.get('/equipo',{formData:'text/json'}).then(function(resp){
						this.roles=resp.body.roles;
						this.equipo=resp.body.equipo;
						this.equipo_all=resp.body.equipo;
					}),(function(e){
						console.log(e);
					});
				},

				previsualizarItem:function(equipo_item){
					if(equipo_item!=null){
						this.equipo_seleccionado=equipo_item;
						this.previsualizar=true;
					}

				},

				regresarLista:function(){
					this.previsualizar=false;
				}
			},

			watch:{

				rol_seleccionado:function(valor){
					if(valor!=""){
						this.equipo=_.filter(this.equipo_all, _.matchesProperty('role_id', valor.id));
					}else{
						this.equipo=this.equipo_all;
					}
				}
			}

		});
		
	}


});