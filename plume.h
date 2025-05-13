#ifndef PLUME_H
#define PLUME_H

#include <stdint.h>

#define PL_WIDTH 960
#define PL_HEIGHT 540

typedef struct {

}

typedef struct {
	int width;
	int height;
	uint32_t *data;
} pl_image_t;

typedef struct {
	int x;
	int y;
	int vx;
	int vy;
	int speed;
} pl_player_t;

typedef struct {
	pl_player_t *players;
	int players_len;

} pl_game_t;

#endif
