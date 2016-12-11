package br.com.sixfit.entities;

import java.sql.Date;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.apache.commons.lang3.StringUtils;

import br.com.sixfit.bos.FitnessBO;

public class Usuario {
	
	private Long id;

	private String nome;
	private String email;
	private String genero;
	private Date nascimento;
	private Float peso;
	private Float altura;
	
	private String senha;
	
	public Usuario(String nome, String email) {
		super();
		this.nome = nome;
		this.email = email;
	}
	
	public Usuario() {
		super();
	}
	
	public Integer getIdade() {
		GregorianCalendar today = new GregorianCalendar();
		GregorianCalendar nascimento = new GregorianCalendar();
		
		if(nascimento != null){
			nascimento.setTime(this.nascimento);
		}		
		
		int anohj = today.get(Calendar.YEAR);
		int anoNascimento = nascimento.get(Calendar.YEAR);
		return new Integer(anohj-anoNascimento);
	}
	
	public String getStatusPeso() {
		return FitnessBO.getStatusPeso(this);
	}
	
	public Double getImc() {
		return (peso / (Math.pow(altura.doubleValue(), 2)));
	}
	
	public String getFormattedImc() {
		return new DecimalFormat("#.##").format(getImc());
	}
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGenero() {
		return genero;
	}
	public void setGenero(String genero) {
		this.genero = genero;
	}
	public Date getNascimento() {
		return nascimento;
	}
	public void setNascimento(String nascimento) {
		if (!StringUtils.isEmpty(nascimento)) {
			String[] values = nascimento.split("/");
			StringBuilder builder = new StringBuilder();
			
			if (values.length == 3) {
				builder.append(values[2]);
				builder.append("-");
				builder.append(values[1]);
				builder.append("-");
				builder.append(values[0]);
			} else {
				builder.append(nascimento);
			}
			
			this.nascimento = Date.valueOf(builder.toString());
		} else {
			this.nascimento = null;
		}
	}
	public Float getPeso() {
		return peso;
	}
	public void setPeso(String peso) {
		if (!StringUtils.isEmpty(peso)) {
			this.peso = Float.valueOf(peso);
		} else {
			this.peso = null;
		}
	}
	public Float getAltura() {
		return altura;
	}
	public void setAltura(String altura) {
		if (!StringUtils.isEmpty(altura)) {
			this.altura = Float.valueOf(altura);
		} else {
			this.altura = null;
		}
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((email == null) ? 0 : email.hashCode());
		result = prime * result + ((nome == null) ? 0 : nome.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Usuario other = (Usuario) obj;
		if (email == null) {
			if (other.email != null)
				return false;
		} else if (!email.equals(other.email))
			return false;
		if (nome == null) {
			if (other.nome != null)
				return false;
		} else if (!nome.equals(other.nome))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Usuario [id=" + id + ", nome=" + nome + ", email=" + email + "]";
	}	
}
