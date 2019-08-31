{extends designs/site.tpl}

{block "content"}
    {load_templates "subtemplates/blog.tpl"}
    {load_templates "subtemplates/paging.tpl"}
    
    <header class="page-header">
        <h2 class="header-title">Blog Feed</h2>
        <div class="header-buttons">
            <a href="/blog/create" class="button primary">Create a Post</a>
        </div>            
    </header>
    
    <section class="page-section article-collection">
    {foreach item=BlogPost from=$data}
        {blogPost $BlogPost headingLevel=h3}
    {foreachelse}
        <p class="empty-text">Stay tuned for the first post&hellip;</p>
    {/foreach}
    </section>

    {if $total > $limit}
    <footer class="page-footer">
        <strong>{$total|number_format} posts:</strong> {pagingLinks $total pageSize=$limit}
    </footer>
    {/if}
{/block}