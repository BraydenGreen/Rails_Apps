var List = React.createClass({
  
  getInitialState: function(){
    return {

      name: this.props.name
    };
  },

  render: function(){

    return <div className='col s2'>
              <h5 className='center-align list'>{ this.state.name } </h5>
            </div>;
  }
})

renderLists: function(){
  return <div>
            { this.showAddList() }
            <div className='row'>
              { this.renderLists()}
            </div>
          </div>;

}