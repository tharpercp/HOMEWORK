document.addEventListener("DOMContentLoaded", function(){
    const canv = document.getElementById("mycanvas");
    canv.width = 500;
    canv.height = 500;

    const ctx = canv.getContext("2d");
    ctx.fillStyle = "pink";
    ctx.fillRect(0, 0, 500, 500);

    ctx.beginPath();
    ctx.arc(100, 100, 20, 0, 2*Math.PI, true);
    ctx.strokeStyle = "green";
    ctx.lineWidth = 5;
    ctx.stroke();
    ctx.fillStyle = "blue";
    ctx.fill();
});
