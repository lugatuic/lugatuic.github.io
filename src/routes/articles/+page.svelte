<script>
    import ArticlesList from "../../shared/components/ArticlesList.svelte";
    import LinkButton from "../../shared/components/LinkButton.svelte";
    import StandardFooter from "../../shared/components/StandardFooter.svelte";


</script>
<style>
    h1 {
        margin: 0px;
    }

    .articles-container {
        padding-top: 32px;
        padding-bottom: 32px;
        background-color: green;
        min-height: 512px;
    }
</style>
<div class="background-container">
    <div class="content-container articles-container">
        <h1>All Articles</h1>
        <ArticlesList count=-1 />
        <LinkButton link="/" text="Go Back" mobile_full_size=1 />
    </div>
</div>
<StandardFooter />