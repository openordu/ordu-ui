<template>
    <div>
        <div>{{ test }}</div><a  :href="linkUrl" ><img  :src="imageUrl" /></a>
    </div>
</template>

<script>
  export default {
    data () {
      return {
        imageUrl: 'https://gitlab.com/patchshorts/cporg-ui/badges/main/pipeline.svg',
        linkUrl: '/pipelines',
      }
    },
  }
</script>