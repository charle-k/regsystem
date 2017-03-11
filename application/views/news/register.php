<?php echo validation_errors(); ?>

<?php echo form_open('news/register'); ?>
<table>
<tr>
<td>
    <label for="username">Username</label>
</td>
<td>	
    <input type="input" name="username" /><br />
</td>
</tr>
<tr>
<td>	

	<label for="username">Email</label>
</td>
<td>
    <input type="input" name="email" />
</td>
</tr>
<tr>
<td>	
	<label for="username">Password</label>
</td>
<td>
    <input type="password" name="password" /><br />
</td>
</tr>
	
</table>
<br>

    <input type="submit" name="submit" value="Create User Account" />

</form>