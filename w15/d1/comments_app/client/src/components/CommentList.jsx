import React from 'react';
import Comment from './Comment';

class CommentList extends React.Component {

	constructor(props){
		super(props);
	}

	render(){
		const commentComponents = this.props.comments.map((comment) => {
			return (
				<Comment key={comment.id} author={comment.author}>
				{comment.text}
				</Comment>
				);
		})
		return (
			<div id="comment-list">
			{commentComponents}
			</div>
			);
	}
}

export default CommentList;