
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
            {foreach from=$errors key=k item=v}
              <p>{$k}: {$v}</p>
              {foreach from=$v key=h item=m}
              <p>
                {$h} : {$m}
              </p>
              {/foreach}
            {/foreach}

          </div>
          <div class="panel-body">
            <form action="{path_for name="auth.signup"}" method="post">
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" placeholder="you@email.com" class="form-control">
              </div>
              <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" id="name" placeholder="you@name.com" class="form-control">
              </div>
              <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="password" id="password" placeholder="" class="form-control">
              </div>
              <button type="submit" name="button" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>
      </div>

    </div>

  </div>
{/block}
