/// @description Cria a Camera da CHAR
//Defina o tamanho da room pelas configurações da mesma
view_enabled = true; //habilita a camera
view_visible[0] = true; //torna visivel
view_xport[0] = 0; //começa com x = 0
view_yport[0] = 0; // y = 0
view_wport[0] = 1280;//largura
view_hport[0] = 720; //altura
//Alvo > Setar pelas variaveis da camera
view_camera[0] = camera_create_view(0, 0, view_wport[0], view_hport[0], 0, oJeffinho, -1, -1, 1000, 1000);
surface_resize(application_surface, 1280, 720); //redimensiona a tela
window_set_size(view_wport[0],view_hport[0]); //a janela é do tamanho da imagem

window_set_fullscreen(true); //deixa tela cheia