package br.com.sixfit.bos;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import br.com.sixfit.entities.Usuario;

public class FitnessBO {
	
	private static final String FEMININO = "1";
	private static final double PESO_MAXIMO_CONSTANT = 24.99;
	private static final double PESO_MINIMO_CONSTANT = 18.5;
	private static final double CALORIAS_KILO = 7770.0;
	
	
	private static Map<String, Integer> caloriasPorAtividade;
	private static Map<String, String> statusSaude;
	
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
		
		statusSaude = new HashMap<String, String>();
		statusSaude.put("1", "SEDENTARIO");
		statusSaude.put("2", "PRATICA ATIVIDADE AS VEZES");
		statusSaude.put("3", "PRATICA ATIVIDADE SEMPRE");
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
	
	public static String getCaloriasDia(Usuario usuario) {
		Double caloriasDia;
		if (FEMININO.equals(usuario.getGenero())) {
			caloriasDia = new Double((665 + (9.6 * usuario.getPeso())) + (1.8 * usuario.getAlturaCM()) - (4.7 * usuario.getIdade()));
		} else {
			caloriasDia = new Double((66 + (13.7 * usuario.getPeso())) + (5 * usuario.getAlturaCM()) - (6.8 * usuario.getIdade()));
			
		}
		return round(caloriasDia, 0).toString();
	}
	
	public static String getPesoIdeal(Usuario usuario) {
		Double pesoIdeal;
		
		if (FEMININO.equals(usuario.getGenero())) {
			pesoIdeal = new Double( 21 * (Math.pow(usuario.getAltura(), 2)));
		} else {
			pesoIdeal = new Double( 23 * (Math.pow(usuario.getAltura(), 2)));
		}
		
		return round(pesoIdeal, 2).toString();
	}
	
	public static String getIMCIdeal(Usuario usuario) {
		if (FEMININO.equals(usuario.getGenero())) {
			return "21";
		} else {
			return "23";
		}
	}

	
	public static String getPesoMinimo(Usuario usuario) {
	 	double alturaQuadrado = Math.pow(usuario.getAltura(), 2);
	 	double pesoMinimo = (alturaQuadrado * PESO_MINIMO_CONSTANT);
	 	return round(new Double(pesoMinimo), 2).toString();
	 }
	
	public static String getPesoMaximo(Usuario usuario) {
	 	double alturaQuadrado = Math.pow(usuario.getAltura(), 2);
	 	double pesoMaximo = (alturaQuadrado * PESO_MAXIMO_CONSTANT);
	 	return round(new Double(pesoMaximo), 2).toString();
	 }
	
	private static Double round(Double value, int places) {
	    if (places < 0) throw new IllegalArgumentException();

	    BigDecimal bd = new BigDecimal(value);
	    bd = bd.setScale(places, RoundingMode.HALF_UP);
	    return bd.doubleValue();
	}
	
	public static String getHorasAtividade(String atividade, double kilos) {
		if (StringUtils.isEmpty(atividade)) {
			return "Nenhuma atividade cadastrada";
		}
		double caloriasHora = caloriasPorAtividade.get(atividade).doubleValue();
		double kilosHora = (caloriasHora/CALORIAS_KILO);
		return round(new Double((kilos/kilosHora)), 2).toString();
	}
}
















