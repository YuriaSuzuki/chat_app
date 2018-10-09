import ReactDecorator from '../base/react_decorator'
import BaseRouter from '../base/router'
import App from '../components/messages/app'
import MessagesAction from '../actions/messages'

export default class MessageRouter extends BaseRouter {
  register() {
    this.route('/', this.decorateApp)
  }

  decorateApp(ctx, next) {
    (new ReactDecorator()).decorate('react-main', App)
    MessagesAction.getMessages()
    next()
  }
}
