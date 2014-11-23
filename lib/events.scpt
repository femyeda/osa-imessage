JsOsaDAS1.001.00bplist00�Vscript_�var fifo = '%path%';

var sendToNode = function(obj) {
	$(JSON.stringify(obj)).writeToFileAtomically(fifo, false);
}

function messageReceived(message, info) {
	sendToNode({
		'text': message,
		'from': {
			'name': info.from.name(),
			'handle': info.from.handle()
		},
		'time': Date.now(),
		'event': 'messageReceived'
	});
}

function activeChatMessageReceived(message, info) {
	sendToNode({
		'text': message,
		'from': {
			'name': info.from.name(),
			'handle': info.from.handle()
		},
		'time': Date.now(),
		'event': 'activeChatMessageReceived'
	});
}

function addressedMessageReceived(message, info) {
	sendToNode({
		'text': message,
		'from': {
			'name': info.from.name(),
			'handle': info.from.handle()
		},
		'time': Date.now(),
		'event': 'addressedMessageReceived'
	});
}

// Events that may be needed

function messageSent() {}
function addressedChatRoomMessageReceived(message, info) {}
function chatRoomMessageReceived(message, info) {}

// Unused events

function loginFinished() {}
function logoutFinished() {}
function buddyBecameAvailable() {}
function buddyBecameUnavailable() {}
function buddyAuthorizationRequested() {}
function receivedTextInvitation() {}
function receivedAudioInvitation() {}
function receivedVideoInvitation() {}
function receivedLocalScreenSharingInvitation() {}
function receivedRemoteScreenSharingInvitation() {}
function avChatStarted() {}
function avChatEnded() {}
function receivedFileTransferInvitation() {}
function completedFileTransfer() {}
                              � jscr  ��ޭ