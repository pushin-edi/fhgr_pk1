<template>
  <div id="app">
    <h1>Suchanfrage überprüfen</h1>
    <HelloWorld msg="Hallo Team!"/>
    <goodbye></goodbye>
    <div>
        <h2>Hier kommt die Tabelle</h2>
        <table>
            <tr>
                <th></th>
                <th>Suchanfrage</th>
                <th>Anzahl Treffer</th>
                <th>Korrekte Anzahl</th>
            </tr>
            <tableRow zeilenNr="A"></tableRow>
            <tableRow zeilenNr="B"></tableRow>
            <tableRow zeilenNr="C" hits=10></tableRow>
            <!-- <tableRow zeilenNr="D" v-on:change="this.display()"></tableRow> -->
            <tableRow zeilenNr="D"></tableRow>
        </table>
    </div>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import goodbye from './components/goodbye.vue'
import tableRow from './components/tableRow.vue'

export default {
  name: 'App',
  components: {
    HelloWorld,
    goodbye,
    tableRow,
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
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
