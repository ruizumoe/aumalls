package en.edu.cuit.aumalls.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {

	@Select("select count(*) from users where user_name = #{username} "
			+ "and user_pass = #{password}")
	int findUserbyunameandpwd(@Param("username")String username,@Param("password") String password);
}
