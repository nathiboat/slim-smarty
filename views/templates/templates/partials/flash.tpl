{assign var="info" value=$flash->getMessage('info') }

{if !empty($info.0)}
  <div class="alert alert-info">
    {$info.0}
  </div>
{/if}
