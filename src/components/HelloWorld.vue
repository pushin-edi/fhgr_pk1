<template>
  <div class="hello">
    <h1>{{ msg }}</h1>
    <p>Ihr habt die Projekt jetzt korrekt bei euch eingerichtet</p>
    <p><a href="https://cli.vuejs.org" target="_blank" rel="noopener">vue-cli documentation</a></p>
    <h3>Links für GitHub</h3>
    <ul>
      <li>Link zum Klonen: <a href="https://github.com/nony-git/fhgr_pk1.git">Repository</a></li>
      <li>Git & Visual Studio Code Tutorial: <a href="https://www.youtube.com/watch?v=F2DBSH2VoHQ">Youtube Tutorial</a></li>
    </ul>
    <h3>Links für VueJS</h3>
    <ul>
      <li>Basics: <a href="https://vuejs.org/v2/guide/">Vue Dokumentation</a></li>
      <li>Tutorial: <a href="https://www.youtube.com/watch?v=Wy9q22isx3U">Youtube</a></li>
      <li>Tool für Code Higlighting in VS Code: <a href="https://marketplace.visualstudio.com/items?itemName=octref.vetur">Vetur</a></li>
      <li>Style Guide Highlighting: <a href="https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint">ESLint</a></li>
    </ul>
    
    
    <h3>Installed CLI Plugins</h3>
    <ul>
      <li><a href="https://github.com/vuejs/vue-cli/tree/dev/packages/%40vue/cli-plugin-babel" target="_blank" rel="noopener">babel</a></li>
      <li><a href="https://github.com/vuejs/vue-cli/tree/dev/packages/%40vue/cli-plugin-eslint" target="_blank" rel="noopener">eslint</a></li>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'HelloWorld',
  props: {
    msg: String
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
h3 {
  margin: 40px 0 0;
}
ul {
  list-style-type: none;
  padding: 0;
}
li {
  display: inline-block;
  margin: 0 10px;
}
a {
  color: #42b983;
}
</style>
