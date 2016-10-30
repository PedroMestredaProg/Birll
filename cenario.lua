 cenario={}
 ----Função  que define os dados iniciais do obstaculo
 function cenario.load()
  love.graphics.setBackgroundColor(41,179,229)
  love.graphics.setColor(255,255,255)
  chao=love.graphics.newImage('Cenario/Background Layer 1.png')
  fundo1=love.graphics.newImage('Cenario/Background Layer 4.png')
  nuvem2=love.graphics.newImage('Cenario/Nuvem2.png')
  fundo2=love.graphics.newImage('Cenario/Background Layer 3.png')
  nuvem1=love.graphics.newImage('Cenario/Nuvem1.png')
  fundo3=love.graphics.newImage('Cenario/Background Layer 2.png')
  fundo4=love.graphics.newImage('Cenario/EstatuaReiBamBam.png')
  Batata=love.graphics.newImage('Cenario/Batata.png')
  Hamburguer=love.graphics.newImage('Cenario/Hamburguer.png')
  BatataBirli=love.graphics.newImage('Cenario/BatataBirl.png')
  Bird=love.graphics.newImage('Cenario/BamBird.png')
  arvore1=love.graphics.newImage('Cenario/Arvore 1.png')
  arvore2=love.graphics.newImage('Cenario/Arvore 2.png')
  arvore3=love.graphics.newImage('Cenario/Arvore 3.png')
  arvore4=love.graphics.newImage('Cenario/Arvore 4.png')
  Coqueiro=love.graphics.newImage('Cenario/Coqueiro.png')
  ivida=love.graphics.newImage('HUD/VidaCheia.png')
  Lanche_random=0
end

 function cenario.draw()
 love.graphics.setColor(255,255,255)
 love.graphics.draw(fundo1,0,0)
 love.graphics.draw(nuvem1,nuvem3x,150)
 love.graphics.draw(nuvem2,nuvem4x,150)
 love.graphics.draw(nuvem2,nuvem2x,250)
 love.graphics.draw(nuvem1,nuvem1x,250)
 love.graphics.draw(fundo2,cenariox,70)
 love.graphics.draw(fundo3,cenariox,70)
 love.graphics.draw(fundo2,cenariox2,70)
 love.graphics.draw(fundo3,cenariox2,70)
 love.graphics.draw(Bird,birdx,300)
 love.graphics.draw(Coqueiro,Coqueirox,392,0,1.3)
 love.graphics.draw(Coqueiro,Coqueirox2,392,0,1.3)
 love.graphics.draw(Batata,batata1.x,batata1.y)
 love.graphics.draw(BatataBirli,BatataBirl.x,BatataBirl.y-20,0,0.8)
 love.graphics.draw(Hamburguer,Hamburguer1.x,Hamburguer1.y-5)
love.graphics.draw(chao,0,41)
 love.graphics.draw(chao,chaox2,41)
 love.graphics.draw(chao,chaox1,41)
end

function cenario.update(dt)
  --Fazer o cenario se mexer
  birdx=birdx+(80*dt)
  Coqueirox=Coqueirox-(vel_box*dt)
  Coqueirox2=Coqueirox2-(vel_box*dt)
  chaox1=chaox1-(vel_box*dt)
  chaox2=chaox2-(vel_box*dt)
  cenariox=cenariox-(Vel_cenario*dt)
  cenariox2=cenariox2-(Vel_cenario*dt)
  nuvem1x=nuvem1x-(30*dt)
  nuvem2x=nuvem2x-(30*dt)
  nuvem3x=nuvem3x-(30*dt)
  nuvem4x=nuvem4x-(30*dt)
  if nuvem1x<=-200 then
    nuvem1x=1280
  end
  if nuvem2x<=-200 then
    nuvem2x=1280
  end
  if nuvem3x<=-200 then
    nuvem3x=1280
  end
  if nuvem4x<=-200 then
    nuvem4x=1280
  end
  if birdx>=1300 then
    birdx=-150
  end
  if chaox1<=-1280 then
    chaox1=1280
  end
  if chaox2<=-1280 then
    chaox2=1280
  end
  if cenariox<=-1280 then
    cenariox=1280
  end
  if cenariox2<=-1280 then
    cenariox2=1280
  end
  if Coqueirox<=-200 then
    Coqueirox=1300
  end
  if Coqueirox2<=-200 then
    Coqueirox2=1300
  end
end