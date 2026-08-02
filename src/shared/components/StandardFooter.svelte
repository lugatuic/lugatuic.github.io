<script>
    import SimpleLogo from "../icons/SimpleLogo.svelte";
</script>
<style>
    * {
        font-family: "IBM Plex Mono", monospace;
    }

    a {
        color: #ffffff;
        text-decoration: none;
    }

    a:hover {
        text-decoration: underline;
    }

    .section-label {
        display: inline;
        margin-bottom: 8px;
        font-family: "Inter", sans-serif;
    }

    .footer {
        background-color: black;
        line-height: 1.5;
    }

    .footer > div:before {
        position: absolute;
        display: block;
        content: "";
        width: 100%;
        height: inherit;
        background-image: url("/images/chicago.webp");
        mask-image: linear-gradient(180deg, rgba(0,0,0,0) 10%, rgba(0,0,0,0.5) 100%);
        background-size: cover;
        pointer-events: none;
        
        /* temporary */
        filter: grayscale(1);
    }

    .footer > div {
        height: 256px;
    }

    .footer-content {
        display: flex;
        justify-content: space-between;
        padding: 32px 64px 32px 64px;
        color: #ffffff;
    }

    .footer-content > div {
        display: flex;
        flex-direction: column;
    }

    .logo-container {
        margin-bottom: 16px;
    }

    .right-footer {
        display: flex;
        flex-direction: row !important;
        text-align: right;
        gap: 64px;
    }

    .right-footer > div {
        display: flex;
        flex-direction: column;
    }
</style>
<div class="footer">
    <div>
        <div class="footer-content">
            <div>
                <div class="logo-container">
                    <SimpleLogo style="height: 64px;" />
                </div>
                <a href="/">Home</a>
                <a href="/articles">Articles</a>
                <a href="/docs">Docs</a>
                <a href="/about">About</a>
            </div>
            <div class="right-footer">
                <div>
                    <div class="section-label">Groups</div>
                    <a href="/ctf">CTF</a>
                    <a href="/cubing">Cubing</a>
                    <a href="/homebrew">Homebrew</a>
                </div>
                <div class="footer-social">
                    <div class="section-label">Find us on</div>
                    <a href="#">GitHub</a>
                    <a href="https://discord.gg/Edrb8ASX7m">Discord</a>
                    <a href="#">Instagram</a>
                    <a href="#">Email</a>
                </div>
            </div>
        </div>
    </div>
</div>