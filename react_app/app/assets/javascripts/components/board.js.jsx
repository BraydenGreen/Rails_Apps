var Board = React.createClass({

  getInitialState: function(){

    return { lists: this.props.lists };
  },

  getDefaultState: function(){

    return { lists: []}
  },

  handleAdd: function(){
    var component = this;
    var name = this.refs.name.getDOMNode().value.trim();
    $.ajax('/add_list', {
      type: 'POST'
      data: { name: name },
      success: function(data) {
        component.setState({ lists: data.lists});
        component.refs.name.getDOMNode().value='';
      }
    });
  },








  showAddList: function(){
    if (this.state.lists.length < 5){
      return <div className='row'>
                <form className='col s12'>
                  <div className='row'>
                    <div className='input-field col s3'>
                      <input type='text' ref='name' placeholder='name' />
                    </div>
                    <div className='input-field'>
                      <a onClick={this.handleAdd} className="waves-effect waves-light btn">Add</a>
                    </div>
                  </div>
                </form>
              </div>;
    }
  },

  render: function() {

    return  <div>
              {this.showAddList()}
            </div>;
  }

})