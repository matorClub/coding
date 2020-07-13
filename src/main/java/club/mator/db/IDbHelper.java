package club.mator.db;

import java.util.List;

import club.mator.exception.CodegenException;
import club.mator.model.TableModel;

public interface IDbHelper {
	void setUrl(String url, String username, String password);
	TableModel getByTable(String tableName) throws CodegenException;
	List<String> getAllTable() throws CodegenException;
}
