<script>
    import { onMount } from "svelte";

    let props = $props();
    const count = props.count;
    let eventsList = $state([]);

    const months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
    const getDateText = (timestamp) => {
        const date = new Date(timestamp);
        const month = months[date.getMonth()];
        const day = date.getDate();
        return `${month} ${day}`;
    };

    onMount(async () => {
        eventsList = await (await fetch("/data/events.json")).json();
        if (count != -1) {
            eventsList = eventsList.slice(0, count);
        }
    });
</script>
<style>
    .calendar {
        margin-top: 32px;
        width: 100%;
        background-color: green;
    }

    .calendar-container {
        display: grid;
        gap: 1px;
        grid-template-columns: repeat(4, 1fr);
    }

    .event {
        padding: 8px;
        background-color: yellow;
    }

    .event-date {
        color: grey;
    }

    .event-title {
        font-size: 20px;
    }

    .event-subtitle {
        color: grey;
    }

    .event-host {
        float: right;
        font-size: 14px;
    }

    .no-events-label {
        margin: 32px;
    }

    @media screen and (width < 1024px) {
        .calendar-container {
            grid-template-columns: repeat(2, 1fr);
        }
    }

    @media screen and (width < 768px) {
        .calendar-container {
            grid-template-columns: repeat(1, 1fr);
        }
    }
</style>
<div class="calendar">
    <div class="calendar-container">
        {#if eventsList.length == 0}
            <div class="no-events-label">No events.</div>
        {:else}
            {#each eventsList as event}
                {#if event.timestamp > Date.now()}
                    <div class="event">
                        <div class="event-date">{getDateText(event.timestamp)} | {event.time}</div>
                        <div class="event-title">{event.title}</div>
                        <div class="event-subtitle">{event.subtitle}</div>
                        <div class="event-host">{event.host}</div>
                    </div>
                {/if}
            {/each}
        {/if}
    </div>
</div>