
{extends file='templates/app.tpl'}
{block name=head}

{/block}
{block name=content}
  <div class="container">
    <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-default">
          <div class="panel-heading">
            Sign UP


          </div>
          <div class="panel-body">
            <form action="{path_for name="auth.signup"}" method="post">
              <div class="form-group {if $errors.email}has-error{/if}">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" placeholder="you@email.com" class="form-control">
                {foreach from=$errors.email item=value}
                  <span class="help-block">{$value}</span>
                {/foreach}
              </div>
              <div class="form-group {if $errors.name}has-error{/if}">
                <label for="name">Name</label>
                <input type="text" name="name" id="name" placeholder="you@name.com" class="form-control">
                {foreach from=$errors.name item=value}
                  <span class="help-block">{$value}</span>
                {/foreach}
              </div>
              <div class="form-group {if $errors.password}has-error{/if}">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="" class="form-control">
                {foreach from=$errors.password item=value}
                  <span class="help-block">{$value}</span>
                {/foreach}
              </div>
              <button type="submit" name="button" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>
      </div>

    </div>

  </div>
{/block}
