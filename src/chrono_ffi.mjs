export const date_now = () => {
    const n = new Date();
    return {
        day: n.getDate(),
        month: n.getMonth(),
        year: n.getFullYear()
    }
}

export const datetime_now = () => {
    const n = new Date();
    return {
        day: n.getDate(),
        month: n.getMonth(),
        year: n.getFullYear(),
        hour: n.getHours(),
        minute: n.getMinutes(),
        second: n.getSeconds()
    }
}

export const time_now = () => {
    const n = new Date();
    return {
        hour: n.getHours(),
        minute: n.getMinutes(),
        second: n.getSeconds()
    }
}