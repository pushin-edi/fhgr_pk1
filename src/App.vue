<template>
  <div id="app">
    <div>
        <h2>Hier kommt die Tabelle</h2>
        <table>
            <tr>
                <th></th>
                <th>Suchanfrage</th>
                <th>Anzahl Treffer</th>
                <th>Korrekte Anzahl</th>
            </tr>
            <tr>
              <td>A</td>
              <td><input v-model="termA" placeholder="Suchbegriff A"></td>
              <td><input v-model.number="hitA" type="number" placeholder="Anzahl Treffer"></td>
              <td>{{hitA}}</td>
            </tr>
            <tr>
              <td>B</td>
              <td><input v-model="termB" placeholder="Suchbegriff B"></td>
              <td><input v-model.number="hitB" type="number" placeholder="Anzahl Treffer"></td>
              <td>{{hitB}}</td>
            </tr>
            <tr>
              <td>C</td>
              <td><input v-model="termC" placeholder="Suchbegriff C"></td>
              <td><input v-model.number="hitC" type="number" placeholder="Anzahl Treffer"></td>
              <td>{{hitC}}</td>
            </tr>
            <tableRow letter="D" :inputTermA="termA" :inputHitA="hitA" bool1="AND" :inputTermB="termB" :inputHitB="hitB" bool2="" :inputTermC="termC" :inputHitC="hitC" comparer="<="></tableRow>
            <tableRow letter="E" :inputTermA="termA" :inputHitA="hitA" bool1="AND" :inputTermB="termB" :inputHitB="hitB" bool2="" :inputTermC="termC" :inputHitC="hitC" comparer="<="></tableRow>
            <tableRow letter="F" :inputTermA="termA" :inputHitA="hitA" bool1="" :inputTermB="termB" :inputHitB="hitB" bool2="AND" :inputTermC="termC" :inputHitC="hitC" comparer="<="></tableRow>
            <tableRow letter="G" :inputTermA="termA" :inputHitA="hitA" bool1="AND" :inputTermB="termB" :inputHitB="hitB" bool2="AND" :inputTermC="termC" :inputHitC="hitC" comparer="<="></tableRow>
              
        </table>
    </div>
  </div>
</template>

<script>
import tableRow from './components/tableRow.vue'

export default {
  name: 'App',
  data:function(){
    return {
      termA: "",
      hitA: 0,
      termB: "",
      hitB: 0,
      termC: "",
      hitC: 0
    };
  },
  components: {
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
