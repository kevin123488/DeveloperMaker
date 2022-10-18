import React from 'react';

export default Album = () => {
  return (
    <div style={albumBack}>
      <button style={albumTagName}>My Album</button>
      <div>
      <h1 class="normalText">재단 선택</h1>
      <div class="donaCardList">
        <div v-for="(organization, index) in this.organizationList">
          <div class="donaCard">
            <img v-if="organization.foundationLogoUrl" v-bind:src="organization.foundationLogoUrl"
              class="donaImg"
            />
            <h4 class="donaTitle"></h4>
          </div>
        </div>
      </div>
    </div>
    </div>
  )
}

// CSS 모음
const albumBack = {
  backgroundColor: 'black',
  opacity: '80%',
}

const albumTagName = {
  alignContent: 'center',
  
}
