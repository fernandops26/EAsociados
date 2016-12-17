$(document).on('ready',function(){
	
	var recurso=$('#recurso-page');

	if(recurso.length){

		Vue.component('recurso-item',{
			template:'#recurso_item-temp',
			props:['recurso']

		});


		new Vue({
			el:'#recurso-page',

			created:function(){
				this.cargarDatos();
			},

			data:{
				servicios:[],
				recursos:[],
				recursos_all:[],
				servicio_seleccionado:''
			},

			methods:{
				cargarDatos:function(){
					this.$http.get('/recursos',{formData:'text/json'}).then(function(datos){
						this.servicios=datos.body.servicios;
						this.recursos=datos.body.recursos;
						this.recursos_all=datos.body.recursos;
					}),(function(e){
						console.log(e);
					});
				}

			},

			watch:{
				servicio_seleccionado:function(valor){
					if(valor!=""){
						this.recursos=_.filter(this.recursos_all, _.matchesProperty('servicio_id', valor.id));
					}else{
						this.recursos=this.recursos_all;
					}
				}
			}

		});

	}

});