import request from 'superagent'
import Dispatcher from '../dispatcher'
import {ActionTypes, APIEndpoints, CSRFToken} from '../constants/app'

export default {
  // JSONの成形をどこでやるか？
  getMessages() {
    return new Promise(function(resolve, reject) {
      request
      .get('/api/messages')
      .end(function(error, res) {
        if (!error && res.status === 200) {
          const json = JSON.parse(res.text)
          Dispatcher.handleServerAction({
            type: ActionTypes.GET_MESSAGES,
            json,
          })
          resolve(json)
        } else {
          reject(res)
        }
      })
    })
  },

  postMeessage(messageId) {
    return new Promise(function(resolve, reject) {
      request
      .post(`${APIEndpoints.MESSAGE}`)
      .set('X-CSRF-Token', CSRFToken())
      .send({message_id: messageId}) // 送信したい内容
      .end(function(error, res) {
        if (!error && res.status === 200) {
          const json = JSON.parse(res.text)
          Dispatcher.handleServerAction({
            type: ActionTypes.POST_MESSAGE,
            messageId,
            json,
          })
        } else {
          reject(res)
        }
      })
    })
  },

  changeOpenChat(newUserID) {
    Dispatcher.handleViewAction({ // dispathcerに命令
      type: ActionTypes.UPDATE_OPEN_CHAT_ID,
      userID: newUserID,
    })
  },

  sendMessage(userID, message) {
    Dispatcher.handleViewAction({
      type: ActionTypes.SEND_MESSAGE,
      userID: userID,
      message: message,
      timestamp: +new Date(),
    })
  },
}
