interface IProps {
    message: string;
}

const A = (props:IProps) => {
    const {message} = props;
    return <div>hello, {message}</div>
}