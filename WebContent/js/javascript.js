var g_cronometro;
            var g_figuraAtual = 1;
            function trocarImg(){
               (g_figuraAtual < 2)?g_figuraAtual++:g_figuraAtual = 1;
                document.getElementById("imgSlide").src="img/slider"+g_figuraAtual+".jpg";
            }
            function pause(){
                clearInterval(g_cronometro);
            }
            function main(){
                g_cronometro = setInterval(trocarImg,3000);
            }
			function play(){
				clearInterval(g_cronometro);
				g_cronometro = setInterval(trocarImg,3000);
			}