<template>
  <div id="app">
    <h1>Suchanfrage überprüfen</h1>
    <HelloWorld msg="Hallo Team!"/>
    <goodbye></goodbye>
    <tableFrame></tableFrame>
  </div>
</template>

<script>
import HelloWorld from './components/HelloWorld.vue'
import goodbye from './components/goodbye.vue'
import tableFrame from './components/tableFrame.vue'

export default {
  name: 'App',
  components: {
    HelloWorld,
    goodbye,
    tableFrame,
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
</style>
