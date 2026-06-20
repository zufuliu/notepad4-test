[2026-05-10 20:38:14.006][17355][no-trace][ERROR]engine.WebSocketClient onError websocket error ErrorEvent {
  [Symbol(kTarget)]: WebSocket {
    _events: [Object: null prototype] {
      open: [Function],
      message: [Function],
      close: [Function],
      error: [Function]
    },
    _eventsCount: 4,
    _maxListeners: undefined,
    _binaryType: 'nodebuffer',
    _closeCode: 1006,
    _closeFrameReceived: false,
    _closeFrameSent: false,
    _closeMessage: <Buffer >,
    _closeTimer: null,
    _errorEmitted: true,
    _extensions: {},
    _paused: false,
    _protocol: '',
    _readyState: 2,
    _receiver: null,
    _sender: null,
    _socket: null,
    _bufferedAmount: 0,
    _isServer: false,
    _redirects: 0,
    _autoPong: true,
    _url: 'ws://127.0.0.1:6444/server',
    _req: null,
    [Symbol(shapeMode)]: false,
    [Symbol(kCapture)]: false
  },
  [Symbol(kType)]: 'error',
  [Symbol(kError)]: Error: connect ECONNREFUSED 127.0.0.1:6444
      at TCPConnectWrap.afterConnect [as oncomplete] (node:net:1611:16)
      at TCPConnectWrap.callbackTrampoline (node:internal/async_hooks:130:17) {
    errno: -61,
    code: 'ECONNREFUSED',
    syscall: 'connect',
    address: '127.0.0.1',
    port: 6444
  },
  [Symbol(kMessage)]: 'connect ECONNREFUSED 127.0.0.1:6444'
} all
