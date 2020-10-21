package com.example.uploadingfiles.storage;

/**
 * TODO
 *
 * @author lijiabin
 * @version 1.0
 * @date 2020/9/30 16:36
 */
public class StorageFileNotFoundException extends  StorageException {
  public StorageFileNotFoundException(String message) {
    super(message);
  }

  public StorageFileNotFoundException(String message, Throwable cause) {
    super(message, cause);
  }
}
