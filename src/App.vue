<template>
    <div id="app">
    <table>
        <thead>
            <tr>
              <th></th>
              <th>Suchanfrage</th>
              <th>Anzahl Treffer</th>
              <th>Korrekte Anzahl</th>
            </tr>
        </thead>
        <tbody>
            <tr>
              <th>A</th>
              <td>z.B. <input type="text" v-model="suchwort1"></td>
              <td><input type="number" v-model="trefferA"></td>
              <td>-</td>
            </tr>
            <tr>
                <th>B</th>
                <td>z.B. <input type="text" v-model="suchwort2"></td>
                <td><input type="number" v-model="trefferB"></td>
                <td>-</td>
            </tr>
            <tr>
                <th>C</th>
                <td>z.B. <input type="text" v-model="suchwort3"></td>
                <td><input type="number" v-model="trefferC"></td>
                <td>-</td>
            </tr>
            <tr>
                <th>D</th>
                <td>{{suchwort1}} AND {{suchwort2}}</td>
                <td><input type="number" v-model="trefferD" v-bind:style="styleD"></td>
                <td>≤ {{ergebnisD}}</td>
            </tr>
            <tr>
                <th>E</th>
                <td>{{suchwort1}} AND {{suchwort3}}</td>
                <td><input type="number" v-model="trefferE"  v-bind:style="styleE"></td>
                <td>≤ {{ergebnisE}}</td>
            </tr>
            <tr>
                <th>F</th>
                <td>{{suchwort2}} AND {{suchwort3}}</td>
                <td><input type="number" v-model="trefferF" v-bind:style="styleF"></td>
                <td>≤ {{ergebnisF}}</td>
            </tr>
            <tr>
                <th>G</th>
                <td>{{suchwort1}} OR {{suchwort2}}</td>
                <td><input type="number" v-model="trefferG"></td>
                <td>= {{ergebnisG}}</td>
            </tr>
            <tr>
                <th>H</th>
                <td>({{suchwort1}} AND {{suchwort2}}) OR {{suchwort3}}</td>
                <td><input type="number" v-model="trefferH"></td>
                <td>= {{ergebnisH}}</td>
            </tr>
            <tr>
                <th>I</th>
                <td>{{suchwort1}} AND {{suchwort2}} OR {{suchwort3}}</td>
                <td><input type="number" v-model="trefferI"></td>
                <td>= {{ergebnisI}}</td>
            </tr>
            <tr>
                <th>J</th>
                <td>{{suchwort1}} AND ({{suchwort2}} OR {{suchwort3}})</td>
                <td><input type="number" v-model="trefferJ"></td>
                <td>= {{ergebnisJ}}</td>
            </tr>
        </tbody>
    </table>
    </div>
</template>

<script>
export default {
  name: 'App',
  data: function () {
      return {
        suchwort1: "Schweiz",
        suchwort2: "Zürich",
        suchwort3: "Johannes",
        trefferA: 4,
        trefferB: 8,
        trefferC: 2,
        trefferD: 0,
        trefferE: 0,
        trefferF: 0,
        trefferG: this.ergebnisG,
        trefferH: this.ergebnisH,
        trefferI: this.ergebnisH,
        trefferJ: this.ergebnisJ,
      };
  },
  computed: {
    ergebnisD: function (){
        return Math.min(this.trefferA, this.trefferB)
    },

    ergebnisE: function (){
        return Math.min(this.trefferA, this.trefferC)
    },

    ergebnisF: function (){
        return Math.min(this.trefferB, this.trefferC)
    },

    ergebnisG: function (){
        /* a und b eingebaut, da Werte sonst wie Strings behandelt wurden */
        var a = this.trefferA*1
        var b = this.trefferB*1
        var c = this.trefferD*1
        return a+b-c
    },

    ergebnisH: function (){
        var a = this.trefferD*1
        var b = this.trefferC*1
        var c = this.trefferE*1
        var d = this.trefferF*1
        return a+b-c-d
    },

    ergebnisI: function (){
        return this.trefferH
    },

    ergebnisJ: function (){
        var a = this.trefferD*1
        var b = this.trefferE*1
        var c = this.trefferF*1
            return a+b+c
    },
  },

}
</script>

