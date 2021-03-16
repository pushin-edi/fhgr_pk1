<template>
    <div>
        <h2>Hier kommt die Tabelle</h2>
        <table>
            <tr>
                <th></th>
                <th>Suchanfrage</th>
                <th>Anzahl Treffer</th>
                <th>Korrekte Anzahl</th>
            </tr>
            <tableRow zeilenNr="A" input="Schweiz"></tableRow>
            <tableRow zeilenNr="B" input="Zürich"></tableRow>
            <tableRow zeilenNr="C" input="Johannes"></tableRow>
            <tableRow zeilenNr="D" input="Schweiz AND Zürich"></tableRow>
        </table>
    </div>
</template>
<script>
import tableRow from './tableRow.vue'

export default{
    name: 'tableFrame',
    components: {
        tableRow,
    }
}
</script>
<style scoped>
    table{
        background-color:lightgray;
        margin-left:20rem;
        border-collapse:collapse;
        width: 800px;
    }
    th, tr, td{
        padding: 1rem;
        border:solid black 1px;
        margin:0;
    }
</style>