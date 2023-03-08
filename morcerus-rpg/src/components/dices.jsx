import React from "react"
export default function dices() {
    rollD20() {
     Math.floor(Math.random() * 20)
    };
    return(
    <button> D20 </button>
    )
}
