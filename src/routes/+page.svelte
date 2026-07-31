<script>
    import ArticlesList from "../shared/components/ArticlesList.svelte";
    import EventsCalendar from "../shared/components/EventsCalendar.svelte";
    import LinkButton from "../shared/components/LinkButton.svelte";
    import LinkSocial from "../shared/components/LinkSocial.svelte";
    import SimpleLogo from "../shared/icons/SimpleLogo.svelte";
</script>
<style>
    * {
        font-family: "Inter", sans-serif;
    }

    h1 {
        padding-bottom: 32px;
        margin: 0px;
        font-size: 48px;
        font-family: "IBM Plex Mono", monospace;
    }

    h2 {
        font-family: "IBM Plex Mono", monospace;
        margin: 0px;
    }
    
    h3 {
        font-family: "IBM Plex Mono", monospace;
    }

    p, li {
        line-height: 1.75;
    }

    .icon-header {
        display: flex;
        justify-content: left;
        align-items: center;
        gap: 32px;
    }

    .icon-header > h2 {
        font-size: 32px;
    }

    .icon-header > img {
        height: 48px;
        width: 48px;
    }

    .content-container {
        max-width: 1024px;
        margin: auto;
        padding: 0px 32px 0px 32px;
    }

    .desc {
        font-size: 20px;
        text-align: justify;
        padding-bottom: 64px;
        margin: 0px;
        font-weight: 500;
    }

    .intro-container {
        width: 100%;
        padding-top: 64px;
        background-color: green;
    }

    .subheader-container {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        gap: 32px;
        padding-bottom: 64px;
    }

    .subheader-container > .logo-container {
        max-width: 30%;
    }

    .socials {
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        gap: 32px;
    }

    .socials > div {
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        gap: 32px;
    }

    .overview-container {
        padding-top: 64px;
        padding-bottom: 64px;
        line-height: 32px;
    }

    .events-overview {
        display: flex;
    }

    .events-overview > div {
        flex: 1 1 0px;
    }

    .event-pics-container {
        position: relative;
        height: 300px;
    }

    .event-pics-container > div {
        position: absolute;
        width: 200px;
        max-width: 40%;
        padding: 16px 16px 32px 16px;
        background-color: #ffffff;
        box-shadow: 2px 4px 19px -8px #000000;
    }
    
    .event-pics-container > div > img {
        width: 100%;
    }

    .pic-0 {
        top: 3%;
        left: 2%;
        transform: rotateX(22deg) rotateY(-10deg) rotateZ(6deg);
    }

    .pic-1 {
        top: 18%;
        left: 49%;
        transform: rotateX(8deg) rotateY(-9deg) rotateZ(0deg);
    }

    .pic-2 {
        top: 30%;
        left: 24%;
        transform: rotateX(-26deg) rotateY(5deg) rotateZ(2deg);
    }

    .groups-container {
        display: flex;
        flex-wrap: wrap;
    }

    .groups-container > a {
        display: flex;
        width: 50%;
        gap: 16px;
        color: var(--light-color);
        text-decoration: none;
    }

    .groups-container > a > div > h3:hover {
        text-decoration: underline;
    }

    .group-image {
        display: flex;
        justify-content: center;
    }

    .group-image > img {
        width: 96px;
    }

    .dark-section {
        width: 100%;
        background-color: var(--dark-background);
        color: var(--light-color);
    }
    
    .section-transition {
        position: absolute;
        width: 100%;
        height: 128px;
        background: linear-gradient(0deg, rgba(0, 0, 0, 0) 0%, var(--dark-background) 100%);
    }

    .light-section {
        width: 100%;
        background: yellow;
    }

    .light-section > .content-container {
        padding: 32px;
        background-color: var(--light-background);
        color: var(--dark-color);
    }

    .join-container {
        padding-top: 128px;
        margin: auto;
        width: 50%;
    }

    .join-container > .icon-header {
        justify-content: center;
    }

    .join-container > .icon-header > img {
        position: absolute;

        /* temporary */
        left: calc(50% - 180px);
    }

    .main-page-footer {
        min-height: 512px;
        margin-top: 64px;
        display: flex;
        align-items: end;
        background-image: url("/images/chicago.webp");
        mask-image: linear-gradient(180deg, rgba(0,0,0,0) 0%, rgba(0,0,0,1) 50%);
        background-size: cover;
        color: #ffffff;
        
        /* temporary */
        filter: grayscale(1);
    }

    .main-page-footer * {
        font-family: "IBM Plex Mono", monospace;
    }

    .main-page-footer > div {
        width: 100%;
        display: flex;
        justify-content: space-between;
        line-height: 24px;
    }

    .main-page-footer > div > div {
        margin: 64px;
    }

    .footer-address {
        padding-bottom: 32px;
    }

    .footer-social {
    }

    .footer-social > a {
        display: block;
        color: var(--light-color);
        text-align: right;
    }

    @media screen and (width < 1024px) {
        .logo-container {
            display: none;
        }

        .events-overview {
            flex-direction: column;
        }

        .events-overview > div {
            flex: auto;
        }

        .event-pics-container {
            margin-bottom: 32px;
        }

        .groups-container {
            flex-direction: row;
        }

        .groups-container > a {
            width: auto;
        }
    }
    
    @media screen and (width < 768px) {
        .socials {
            justify-content: center;
        }

        .join-container {
            width: 100%;
        }

        .desc {
            padding-bottom: 28px;
        }
    }
</style>
<div class="intro-container">
    <div class="subheader-container content-container">
         <div>
            <h1>Linux User Group @ UIC</h1>
            <p class="desc">
                We are UIC's student-led community for Free & Open Source Software (FOSS).
                <br><br>
                LUG is a place for sharing ideas and collaborating on projects
                for the greater good of accessible and sustainable technology.
            </p>
            <div class="socials">
                <LinkButton link="#join" text="JOIN LUG" mobile_full_size=1 />
                <div>
                    <LinkSocial link="https://discord.gg/Edrb8ASX7m" icon="discord" />
                    <LinkSocial link="#" icon="instagram" />
                    <LinkSocial link="#" icon="github" />
                    <LinkSocial link="#" icon="email" />
                </div>
            </div>
        </div>
        <div class="logo-container">
            <SimpleLogo style="width: 100%" />
        </div>
    </div>
</div>
<div class="dark-section">
    <div class="overview-container content-container">
        <div class="events-overview">
            <div>
                <h2>What we do:</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                </p>
            </div>
            <div class="event-pics-container">
                <div class="pic-0">
                    <img src="https://placehold.co/500x400" alt="event">
                </div>
                <div class="pic-1">
                    <img src="https://placehold.co/500x400" alt="event">
                </div>
                <div class="pic-2">
                    <img src="https://placehold.co/500x400" alt="event">
                </div>
            </div>
        </div>
        <div class="groups-overview">
            <h2>Our groups:</h2>
            <div class="groups-container">
                <a href="/ctf">
                    <div class="group-image">
                        <img src="https://placehold.co/320x320" alt="ctf" />
                    </div>
                    <div>
                        <h3>CTF Group</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        </p>
                    </div>
                </a>
                <a href="/cubing">
                    <div class="group-image">
                        <img src="https://placehold.co/320x320" alt="cube" />
                    </div>
                    <div>
                        <h3>Cubing Group</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        </p>
                    </div>
                </a>
                <a href="/homebrew">
                    <div class="group-image">
                        <img src="https://placehold.co/320x320" alt="homebrew" />
                    </div>
                    <div>
                        <h3>Homebrew Group</h3>
                        <p>
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                        </p>
                    </div>
                </a>
            </div>
        </div>
        <!-- <div class="projects-overview">
            <div>
                <h2>Projects we made:</h2>
                <p>
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                </p>
            </div>
        </div> -->
    </div>
</div>
<div class="light-section">
    <div class="section-transition"></div>
    <div class="content-container">
        <div class="join-container">
            <div class="icon-header">
                <img src="https://placehold.co/64x64" alt="icon" />
                <h2 id="join">How to Join</h2>
            </div>
            <p>The best ways to stay in contact with us and to be an active member are to:</p>
            <ul>
                <li>Join our <a href="https://discord.gg/Edrb8ASX7m">Discord Server</a></li>
                <li>Subscribe to our <a href="mailto:listserv@uic.edu?body=SUBSCRIBE%20LUG">Listserv</a></li>
                <li>Show up in person to our office in <a href="https://osm.org/go/ZUfI2rRnd--?way=1164024531">CDRLC</a> 2433</li>
                <li>Join the official <a href="https://uic.campusgroups.com/linuxuser/club_signup">CampusGroups RSO</a></li>
            </ul>
            <p>Typically, there is someone in the office from 9:00 AM to 5:00 PM.</p>
        </div>
    </div>
    <div class="events-container content-container">
        <div class="icon-header">
            <img src="https://placehold.co/64x64" alt="icon" />
            <h2 id="calendar">Events Calendar</h2>
        </div>
        <EventsCalendar count=16 />
    </div>
    <div class="articles-container content-container">
        <div class="icon-header">
            <img src="https://placehold.co/64x64" alt="icon" />
            <h2 id="articles">Recent Articles</h2>
        </div>
        <ArticlesList count=5 />
    </div>
    <div class="main-page-footer">
        <div>
            <div>
                <div class="footer-address">
                    CDRLC 2433<br>
                    Computer Design Research and Learning Center<br>
                    University of Illinois Chicago<br>
                    <br>
                    900 W Taylor Street<br>
                    Chicago, IL 60607
                </div>
                <div>
                    <SimpleLogo style="height: 64px; margin-right: 16px" />
                </div>
            </div>
            <div class="footer-social">
                Find us on
                <a href="#">GitHub</a>
                <a href="https://discord.gg/Edrb8ASX7m">Discord</a>
                <a href="#">Instagram</a>
                <a href="#">Email</a>
            </div>
        </div>
    </div>
</div>