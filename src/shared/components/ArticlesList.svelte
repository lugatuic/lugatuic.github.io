<script>
    import { onMount } from "svelte";
    import LinkButton from "./LinkButton.svelte";

    let props = $props();
    const count = props.count;

    let articlesList = $state([]);

    onMount(async () => {
        articlesList = await (await fetch("/data/articles.json")).json();
        if (count != -1) {
            articlesList = articlesList.slice(0, count);
        }
    });
</script>
<style>
    * {
        font-family: "Inter", sans-serif;
    }

    .articles {
        display: flex;
        flex-direction: column;
    }

    .articles-container {
        margin: 32px 0px 32px 0px;
        display: flex;
        flex-direction: column;
        gap: 16px;
    }

    .article {
        display: block;
        color: black;
        text-decoration: none;
    }

    .article-title {
        display: inline;
        font-size: 20px;
    }

    .article-title:hover {
        text-decoration: underline;
    }

    .article-subtitle {
        margin-top: 8px;
    }

    .article-date {
        display: inline;
        color: grey;
    }

    .no-articles-label {
        margin: 32px;
    }
</style>
<div class="articles">
    {#if articlesList.length == 0}
        <div class="no-articles-label">No articles.</div>
    {:else}
        <div class="articles-container">
            {#each articlesList as article}
                <a class="article" href={article.link}>
                    <div>
                        <div class="article-title">{article.title}</div>
                        <div class="article-date"> | {article.date}</div>
                    </div>
                    <div class="article-subtitle">{article.subtitle}</div>
                </a>
            {/each}
        </div>
    {/if}
</div>