package belval.classes;

import java.util.Objects;

public class Produto {
	//Atributos
		private Integer id;
		private String nome;
		private String descricao;
		private Double preco;
		//metodo construtor 
		public Produto(){
			
			 }
		
		
		
		
		
		public Produto(Integer id, String nome, String descricao, Double preco) {
			super();
			this.id = id;
			this.nome = nome;
			this.descricao = descricao;
			this.preco = preco;
		}





		// metodo getter
		 public Integer getId() {
			 return this.id;
		}
		 
		 public void setId(Integer id) {
			 this.id =id;
			 
		 }
		public String getNome() {
			return nome;
		}
		public void setNome(String nome) {
			this.nome = nome;
		}
		public String getDescricao() {
			return descricao;
		}
		public void setDescricao(String descricao) {
			this.descricao = descricao;
		}
		public Double getPreco() {
			return preco;
		}
		public void setPreco(Double preco) {
			this.preco = preco;
		}
		
		@Override
		public int hashCode() {
			return Objects.hash(descricao, id, nome, preco);
		}
		@Override
		public boolean equals(Object obj) {
			if (this == obj)
				return true;
			if (obj == null)
				return false;
			if (getClass() != obj.getClass())
				return false;
			Produto other = (Produto) obj;
			return Objects.equals(descricao, other.descricao) && Objects.equals(id, other.id)
					&& Objects.equals(nome, other.nome) && Objects.equals(preco, other.preco);
		}
		@Override
		public String toString() {
			return "Produto [id=" + id + ", nome=" + nome + ", descricao=" + descricao + ", preco=" + preco + "]";
		}
		 
		 //ALT +SHIFT +S >GENERATE GETTERS AND SETTS
		 //ALT +SHIFT +S >HASHCODE() AND EQUAULS
		//ALL +SHIT+S PRODUCAO TEXTUAL DO PRODUTO
		
		
}
