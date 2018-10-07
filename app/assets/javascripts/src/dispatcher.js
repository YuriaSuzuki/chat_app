import {Dispatcher} from 'flux'
import assign from 'object-assign'

const appDispatcher = assign(new Dispatcher(), {
  handleServerAction(action) {
    this.dispatch({
      source: 'server',
      action: action,
    })
  },

  handleViewAction(action) { // actionから命令を受けて、action名を受け取る
    this.dispatch({
      source: 'view',
      action: action,
    })
  },
})

export default appDispatcher
