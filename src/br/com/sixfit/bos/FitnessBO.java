package br.com.sixfit.bos;

import java.util.HashMap;
import java.util.Map;

import br.com.sixfit.entities.Usuario;

public class FitnessBO {
	
	private static final double PESO_MAXIMO_CONSTANT = 24.99;
	private static final double PESO_MINIMO_CONSTANT = 18.5;
	private static Map<String, Integer> caloriasPorAtividade;
	private static final Double IMC_BAIXO = 18.5;
	private static final Double IMC_SOBREPESO = 25.0;
	private static final Double IMC_OBESIDADE_1 = 30.0;
	private static final Double IMC_OBESIDADE_2 = 35.0;
	private static final Double IMC_OBESIDADE_3 = 40.0;
	
	static {
		caloriasPorAtividade = new HashMap<String, Integer>();
		caloriasPorAtividade.put("CICLISMO", 320);
		caloriasPorAtividade.put("CORRIDA", 600);
		caloriasPorAtividade.put("NATACAO", 500);
		caloriasPorAtividade.put("FUTEBOL", 580);
		caloriasPorAtividade.put("VOLEI", 320);
	}
	
	public static String getStatusPeso(Usuario usuario) {
		String statusPeso = "";
		
		if (usuario.getImc() < IMC_BAIXO) {
			statusPeso = "BAIXO PESO";
		} else if (usuario.getImc() < IMC_SOBREPESO) {
			statusPeso = "PESO NORMAL";
		} else if (usuario.getImc() < IMC_OBESIDADE_1) {
			statusPeso = "SOBREPESO";
		} else if (usuario.getImc() < IMC_OBESIDADE_2) {
			statusPeso = "OBESIDADE 1";
		} else if (usuario.getImc() < IMC_OBESIDADE_3) {
			statusPeso = "OBESIDADE 2";
		} else {
			statusPeso = "OBESIDADE 3";
		}
		
		return statusPeso;
	}
	
//	66 + (13,7 x Peso) + (5,0 x Altura em cm) – (6,8 x Idade) - Homem
//	665 + (9,6 x Peso) + (1,8 x Altura em cm) – (4,7 x Idade) - Mulher

	
	
	public static String getCaloriasDia(Usuario usuario) {
		Double caloriasDia;
		if ("1".equals(usuario.getGenero())) {
			caloriasDia = new Double((665 + (9.6 * usuario.getPeso())) + (1.8 * usuario.getAlturaCM()) - (4.7 * usuario.getIdade()));
		} else {
			caloriasDia = new Double((66 + (13.7 * usuario.getPeso())) + (5 * usuario.getAlturaCM()) - (6.8 * usuario.getIdade()));
			
		}
		return caloriasDia.toString();
	}
	
	public static String getPesoIdeal(Usuario usuario) {
		Double pesoIdeal;
		
		if ("1".equals(usuario.getGenero())) {
			pesoIdeal = new Double( 21 / (Math.pow(usuario.getAltura(), 2)));
		} else {
			pesoIdeal = new Double( 23 / (Math.pow(usuario.getAltura(), 2)));
		}
		
		return pesoIdeal.toString();
	}

	
	public static String getPesoMinimo(Usuario usuario) {
	 	double alturaQuadrado = Math.pow(usuario.getAltura(), 2);
	 	double pesoMinimo = (alturaQuadrado * PESO_MINIMO_CONSTANT);
	 	return new Double(pesoMinimo).toString();
	 }
	
	public static String getPesoMaximo(Usuario usuario) {
	 	double alturaQuadrado = Math.pow(usuario.getAltura(), 2);
	 	double pesoMaximo = (alturaQuadrado * PESO_MAXIMO_CONSTANT);
	 	return new Double(pesoMaximo).toString();
	 }
}
















