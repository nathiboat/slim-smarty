<?php
/* Smarty version 3.1.29, created on 2016-05-20 18:27:51
  from "C:\xampp\htdocs\slim\slim-smarty-master\views\templates\home.tpl" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_573f3b07b91074_39718822',
  'file_dependency' => 
  array (
    '169252c1fa68382bfa3b699da27521ec371929a0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\slim\\slim-smarty-master\\views\\templates\\home.tpl',
      1 => 1463761657,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
    'file:templates/app.tpl' => 1,
  ),
),false)) {
function content_573f3b07b91074_39718822 ($_smarty_tpl) {
$_smarty_tpl->ext->_inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->ext->_inheritance->processBlock($_smarty_tpl, 0, 'head', array (
  0 => 'block_2672573f3b07af0db5_21083325',
  1 => false,
  3 => 0,
  2 => 0,
));
?>

<?php 
$_smarty_tpl->ext->_inheritance->processBlock($_smarty_tpl, 0, 'content', array (
  0 => 'block_16873573f3b07b4ab58_58337408',
  1 => false,
  3 => 0,
  2 => 0,
));
?>

<?php $_smarty_tpl->ext->_inheritance->endChild($_smarty_tpl);
$_smarty_tpl->smarty->ext->_subtemplate->render($_smarty_tpl, "file:templates/app.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 2, false);
}
/* {block 'head'}  file:home.tpl */
function block_2672573f3b07af0db5_21083325($_smarty_tpl, $_blockParentStack) {
?>

  <link href="/css/mypage.css" rel="stylesheet" type="text/css"/>
  <?php echo '<script'; ?>
 src="/js/mypage.js"><?php echo '</script'; ?>
>
<?php
}
/* {/block 'head'} */
/* {block 'content'}  file:home.tpl */
function block_16873573f3b07b4ab58_58337408($_smarty_tpl, $_blockParentStack) {
?>
My HTML Page Body goes here<?php
}
/* {/block 'content'} */
}
