module.exports = {
    notify: function (name, successCallback, errorCallback) {
        cordova.exec(successCallback, errorCallback, "Notifications", "notify", [name]);
    }
};
