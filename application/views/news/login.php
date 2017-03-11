<h2><?php echo $title; ?></h2>

<?php echo validation_errors(); ?>

<?php echo form_open('news/login'); ?>
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
	<label for="username">Password</label>
</td>
<td>
    <input type="password" name="password" /><br />
</td>
</tr>
	
</table>
    <br>

    <input type="submit" name="submit" value="Login" />

</form>