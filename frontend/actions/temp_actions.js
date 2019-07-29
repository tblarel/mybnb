export const RECEIVE_TEMP_DATA = 'RECEIVE_TEMP_DATA';

export const receiveTempData = data => ({
    type: RECEIVE_TEMP_DATA,
    data
});

export const postTempData = data => dispatch => {
    dispatch(receiveTempData(data));
}