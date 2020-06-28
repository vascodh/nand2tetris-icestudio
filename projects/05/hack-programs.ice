{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "alhambra-ii",
    "graph": {
      "blocks": [
        {
          "id": "30bdfe3b-07d3-4b0e-9b22-71d7c3e0c0f5",
          "type": "basic.memory",
          "data": {
            "name": "test.hack",
            "list": "0000000000000000 // @R0\n1111110000010000 // D=M\n1110011111010000 // D=D+1\n1110001100001000 // M=D\n0000000000000000 // @0\n1110101010000111 // 0;JMP\n",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 224,
            "y": 424
          },
          "size": {
            "width": 320,
            "height": 160
          }
        },
        {
          "id": "e217bafc-d779-45e8-aa71-6fd39418604b",
          "type": "basic.memory",
          "data": {
            "name": "Max.hack",
            "list": "0000000000000000  // @R0\n1111110000010000  // D=M    # D=R0\n0000000000000001  // @R1    \n1111010011010000  // D=D-M  # D=R0-R1\n0000000000001010  // @10\n1110001100000001  // D;JGT  # (R0-R1)>0 JUMP 10\n0000000000000001  // @R1\n1111110000010000  // D=M   # D=R1\n0000000000001100  // @12 \n1110101010000111  // 0;JMP # JMP 12\n0000000000000000  // @R0\n1111110000010000  // D=M  # D=R0\n0000000000000010  // @R2\n1110001100001000  // M=D  # R2=D\n0000000000001110  // @14   \n1110101010000111  // 0;JMP #-- STOP",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 240,
            "y": 872
          },
          "size": {
            "width": 456,
            "height": 168
          }
        },
        {
          "id": "626b3837-4749-4a8a-9c4b-991ded31ac8b",
          "type": "basic.memory",
          "data": {
            "name": "test3.hack",
            "list": "0000000011111111 // @255\n1110110000010000 // D=A\n0100000000000000 // @Screen\n1110001100001000 // M=D\n0000000000000000 // @0\n1110101010000111 // JMP 0",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 296,
            "y": 128
          },
          "size": {
            "width": 320,
            "height": 160
          }
        },
        {
          "id": "2f47b5f5-ba90-456c-b451-d714da8c7d59",
          "type": "basic.memory",
          "data": {
            "name": "test-05-jmp-eq",
            "list": "0110000000000000\n1111110000010000\n0000000000001010\n1110001100000010\n0000000000001111\n1110110000010000\n0100000000000000\n1110001100001000\n0000000000000000\n1110101010000111\n0000000011110000\n1110110000010000\n0100000000000000\n1110001100001000\n0000000000000000\n1110101010000111\n",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 632,
            "y": 408
          },
          "size": {
            "width": 344,
            "height": 264
          }
        },
        {
          "id": "b7b7aaf3-89cc-49ff-a1a7-4122099417d7",
          "type": "basic.memory",
          "data": {
            "name": "Add.hack",
            "list": "0000000000000010 // @2\r\n1110110000010000 // D=A  # D=2\r\n0000000000000011 // @3\r\n1110000010010000 // D=D+A # D=2+3\r\n0000000000000000 // @R0\r\n1110001100001000 // M=D  # R0=2+3\r\n",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 696,
            "y": 128
          },
          "size": {
            "width": 376,
            "height": 200
          }
        },
        {
          "id": "46c51614-0f7c-4357-a718-009a0fdcf5a9",
          "type": "basic.memory",
          "data": {
            "name": "Rect.hack",
            "list": "0000000000000000 // @R0   \n1111110000010000 // D=M   # D=R0\n0000000000010111 // @23\n1110001100000110 // D;JLE # R0<=0 jmp 23\n0000000000010000 // @16   \n1110001100001000 // M=D     #-- R16=R0 \n0100000000000000 // @16384\n1110110000010000 // D=A     # D=16384\n0000000000010001 // @17     \n1110001100001000 // M=D     # R17 = 16384\n0000000000010001 // @17\n1111110000100000 // A=M     # A=R17\n1110111010001000 // M=-1    # M[R17]=-1 (fill)\n0000000000010001 // @17\n1111110000010000 // D=M     # D=R17\n0000000000100000 // @32\n1110000010010000 // D=D+A   # D=D+32\n0000000000010001 // @17\n1110001100001000 // M=D     # R17 = D\n0000000000010000 // @16\n1111110010011000 // MD=M-1  # R16 = R16 -1; D=R16\n0000000000001010 // @10\n1110001100000001 // D;JGT   # R16>0 jmp 10\n0000000000010111 // @23\n1110101010000111 // 0;JMP   # STOP",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 816,
            "y": 864
          },
          "size": {
            "width": 440,
            "height": 392
          }
        },
        {
          "id": "9c84feb0-a275-49de-90a8-d9abda48425c",
          "type": "basic.memory",
          "data": {
            "name": "add-2",
            "list": "0000000000000010 // @2\n1110110000010000 // D=A  // D=2\n0000000000000011 // @3\n1110000010010000 // D=D+A // D=2+3\n0000000000000000 // @R0\n1110001100001000 // M=D  // R0=2+3\n1110101010010000 // D=0  //-- Check the results comes from memory\n1111110000010000 // D=M  //-- D=R0\n0100000000000000 // @SCREEN\n1110001100001000 // M=D     //-- Write on the screen\n0000000000001010 // @inf   //-- Stop\n1110101010000111 // 0;JMP",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 1160,
            "y": 104
          },
          "size": {
            "width": 424,
            "height": 224
          }
        },
        {
          "id": "64645a95-384f-4b60-8e96-1a0164bf3885",
          "type": "basic.memory",
          "data": {
            "name": "test-04-btn-leds",
            "list": "0110000000000000\n1111110000010000\n0100000000000000\n1110001100001000\n0000000000000000\n1110101010000111",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 1168,
            "y": 584
          },
          "size": {
            "width": 224,
            "height": 136
          }
        },
        {
          "id": "1103b4bd-7b68-4dc9-8234-83311d2f3db9",
          "type": "basic.memory",
          "data": {
            "name": "test-06-jmp-lt",
            "list": "0110000000000000\n1111110000010000\n1110001110010000\n0000000000001011\n1110001100000100\n0000000000001111\n1110110000010000\n0100000000000000\n1110001100001000\n0000000000000000\n1110101010000111\n0000000011110000\n1110110000010000\n0100000000000000\n1110001100001000\n0000000000000000\n1110101010000111\n",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 1552,
            "y": 496
          },
          "size": {
            "width": 296,
            "height": 288
          }
        },
        {
          "id": "d5ed98a6-075f-4fa1-92c7-ba9d8e30d7bf",
          "type": "basic.memory",
          "data": {
            "name": "test-07-jmp-gt",
            "list": "0110000000000000\n1111110000010000\n0000000000001010\n1110001100000001\n0000000011110000\n1110110000010000\n0100000000000000\n1110001100001000\n0000000000000000\n1110101010000111\n0000000000001111\n1110110000010000\n0100000000000000\n1110001100001000\n0000000000000000\n1110101010000111",
            "local": false,
            "format": 10
          },
          "position": {
            "x": 1624,
            "y": 1072
          },
          "size": {
            "width": 264,
            "height": 272
          }
        }
      ],
      "wires": []
    }
  },
  "dependencies": {}
}