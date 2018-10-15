module Api
  class MessagesController < ApplicationController
    def index
      @messages = {
        "2" => {
          user: {
            profilePicture: 'https://avatars0.githubusercontent.com/u/7922109?v=3&s=460',
            id: 2,
            name: 'Yuta Kamezaki',
            status: 'online',
          },
          lastAccess: {
            recipient: 1424469794050,
            currentUser: 1424469794080,
          },
          messages: [
            {
              contents: 'Hey!',
              from: 2,
              timestamp: 1424469793023,
            },
            {
              contents: 'Hey, what\'s up?',
              from: 1,
              timestamp: 1424469794000,
            },
          ],
        },
        "3" =>  {
          user: {
            read: true,
            profilePicture: 'https://avatars3.githubusercontent.com/u/2955483?v=3&s=460',
            name: 'Jilles Soeters',
            id: 3,
            status: 'online',
          },
          lastAccess: {
            recipient: 1424352522000,
            currentUser: 1424352522080,
          },
          messages: [
            {
              contents: 'Want a game of ping pong?',
              from: 3,
              timestamp: 1424352522000,
            },
          ],
        },
        "4" =>  {
          user: {
            name: 'Todd Motto',
            id: 4,
            profilePicture: 'https://avatars1.githubusercontent.com/u/1655968?v=3&s=460',
            status: 'online',
          },
          lastAccess: {
            recipient: 1424423579000,
            currentUser: 1424423574000,
          },
          messages: [
            {
              contents: 'Please follow me on twitter I\'ll pay you',
              timestamp: 1424423579000,
              from: 4,
            },
          ],
        },
      }

      # @messages = Message.all
      render json: @messages
    end

    def create
    end
  end
end
