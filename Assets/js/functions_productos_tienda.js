let url = window.location.href;
 
	texto = ""
	texto = "https://api.whatsapp.com/send?phone=51918515262&text=Hola necesito información de este producto: "+ url;

	let destino = document.querySelector("#divWhatsapp");
	destino.href = texto;

	