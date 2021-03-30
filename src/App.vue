<template>
  <div id="app">
    <div>
        <h2>Hier kommt die Bool-Tabelle</h2>
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
            <tableRowBool letter="D" :inputTermA="termA" :inputHitA="hitA" bool1="AND" :inputTermB="termB" :inputHitB="hitB" bool2="" :inputTermC="termC" :inputHitC="hitC" comparer="<="></tableRowBool>
            <tableRowBool letter="E" :inputTermA="termA" :inputHitA="hitA" bool1="" :inputTermB="termB" :inputHitB="hitB" bool2="AND" :inputTermC="termC" :inputHitC="hitC" comparer="<="></tableRowBool>
            <tableRowBool letter="F" :inputTermA="termA" :inputHitA="hitA" bool1="" :inputTermB="termB" :inputHitB="hitB" bool2="AND" :inputTermC="termC" :inputHitC="hitC" comparer="<="></tableRowBool>
            <tableRowBool letter="G" :inputTermA="termA" :inputHitA="hitA" bool1="OR" :inputTermB="termB" :inputHitB="hitB" bool2="" :inputTermC="termC" :inputHitC="hitC" comparer="<="></tableRowBool>
            <tableRowBool letter="H" :inputTermA="termA" :inputHitA="hitA" bool1="AND" :inputTermB="termB" :inputHitB="hitB" bool2="OR" :inputTermC="termC" :inputHitC="hitC" :bracketPair2=true comparer="="></tableRowBool>
            <tableRowBool letter="I" :inputTermA="termA" :inputHitA="hitA" bool1="OR" :inputTermB="termB" :inputHitB="hitB" bool2="AND" :inputTermC="termC" :inputHitC="hitC" :bracketPair1=true comparer="="></tableRowBool>
          
        </table>
        <h2>Hier kommt die *-Tabelle</h2>
        <table>
            <tr>
                <th></th>
                <th>Suchanfrage</th>
                <th>Anzahl Treffer</th>
                <th>Korrekte Anzahl</th>
            </tr>
            <tr>
              <td>A</td>
              <td><input v-model="termWildA" placeholder="Suchbegriff A"></td>
              <td><input v-model.number="hitWildA" type="number" placeholder="Anzahl Treffer"></td>
              <td>{{hitWildA}}</td>
            </tr>
            <tr>
              <td>B</td>
              <td><input v-model="termWildB" placeholder="Suchbegriff B"></td>
              <td><input v-model.number="hitWildB" type="number" placeholder="Anzahl Treffer"></td>
              <td>{{hitWildB}}</td>
            </tr>
            <tr>
              <td>C</td>
              <td><input v-model="termWildC" placeholder="Suchbegriff C"></td>
              <td><input v-model.number="hitWildC" type="number" placeholder="Anzahl Treffer"></td>
              <td>{{hitWildC}}</td>
            </tr>
            <tableRowWild rownum="D" :inputTermWildA="termWildA" :inputHitWildA='hitWildA' :inputTermWildB="termWildB" :inputHitWildB='hitWildB' :inputTermWildC="termWildC" :inputHitWildC='hitWildC'></tableRowWild>
        </table>
    </div>
  </div>
</template>

<script>
import tableRowBool from './components/tableRowBool.vue'
import tableRowWild from './components/tableRowWild.vue'

export default {
  name: 'App',
  data:function(){
    return {
      // for bool
      termA: "",
      hitA: 0,
      termB: "",
      hitB: 0,
      termC: "",
      hitC: 0,
      // for trunc & wildcard
      termWildA: "",
      hitWildA: 0,
      termWildB: "",
      hitWildB: 0,
      termWildC: "",
      hitWildC: 0
    };
  },
  components: {
    tableRowBool,
    tableRowWild
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
        background-color:lightblue;
        margin-left:20rem;
        border-collapse:collapse;
        width: 800px;
    }
    th, tr, td{
        padding: 1rem;
        border:solid black 1px;
        margin:0;
        border-radius: 5px;
    }
</style>
