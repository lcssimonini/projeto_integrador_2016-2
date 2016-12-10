package br.com.sixfit.bos;

import br.com.sixfit.entities.Usuario;

public class FitnessBO {
	
	private static final Double IMC_BAIXO = 18.5;
	private static final Double IMC_SOBREPESO = 25.0;
	private static final Double IMC_OBESIDADE_1 = 30.0;
	private static final Double IMC_OBESIDADE_2 = 35.0;
	private static final Double IMC_OBESIDADE_3 = 40.0;
	
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

}
