package belval;

import java.util.ArrayList;
import java.util.List;

import belval.classes.Produto;

public class ProdutoRepository {
	private Integer proxId=1;

	private List<Produto> listaProduto;

	public ProdutoRepository() {
		this.listaProduto = new ArrayList<>();
	}

	public Produto findById(Integer id) {
		for (Produto produto : listaProduto) {
			if (produto.getId().equals(id)) {
				return produto;
			}
		}
		return null;
	}

	public void removeById(Integer id) {
		Produto produtoRemover = findById(id);
		if (produtoRemover != null) {
			listaProduto.remove(produtoRemover);
		}
	}

	public void save(Produto produto) {
		listaProduto.add(produto);
	}
	

}
