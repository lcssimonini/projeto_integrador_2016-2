package br.com.sixfit.constants;

public abstract class SQLConstants {
	
	public static final String SQL_FIND_BY_ID = "SELECT * FROM usuarios WHERE id = ?";
    
	public static final String SQL_FIND_BY_EMAIL = "SELECT * FROM usuarios WHERE email = ?";
    
	public static final String SQL_FIND_ALL = "SELECT * FROM usuarios ORDER BY nome";
    
	public static final String SQL_INSERT = "INSERT INTO usuarios (nome, email, genero, nascimento, peso, altura, senha,status_fumante,status_atividade,atividade,doenca) VALUES (?,?,?,?,?,?,?,?,?,?,?)";
    
	public static final String SQL_UPDATE = "UPDATE usuarios SET nome=?,email=?,genero=?,nascimento=?,peso=?,altura=?,senha=?,status_fumante=?,status_aividade=?,atividade=?,doenca=? WHERE id = ?";
    
	public static final String SQL_DELETE = "DELETE FROM usuarios WHERE id = ?";
    
	public static final String SQL_EXIST_EMAIL = "SELECT id FROM usuarios WHERE email = ?";
    
	public static final String SQL_CHANGE_PASSWORD = "UPDATE usuarios SET password = ? WHERE id = ?";
}
