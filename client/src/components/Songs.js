import React, { Component } from 'react'
import { Link } from 'react-router-dom'
import axios from 'axios'
import styled from 'styled-components'
import Header from './Header'

const FlexContainer = styled.div`
display: inline-block;
padding: 30px;
margin: 25px;

@media screen and (max-width:450px) {
    .photo img {
        font-size: 1.25rem;
        max-width: 200px;
    }
   }
`

class Songs extends Component {
    state = {
        songs: [],
       
    }

    componentWillMount() {
        this.getAllSongs()
    }

    getAllSongs = async () => {
        const res = await axios.get('/api/songs')
        this.setState({ songs: res.data })
    }

    render() {

        const singles = this.state.songs.map((single) => {
            return (
                <FlexContainer>
                <div class="photo">
                    <iframe src={single.title}/>
                </div>
                </FlexContainer>
            )
        })

        return (
            <div>
                <Header />
                {singles}
            </div>
        )
    }
}
            
export default Songs;