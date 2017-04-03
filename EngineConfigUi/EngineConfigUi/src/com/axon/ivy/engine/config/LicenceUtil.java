package com.axon.ivy.engine.config;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.apache.commons.io.IOUtils;
import org.primefaces.model.UploadedFile;

import ch.ivyteam.licence.LicenceConstants;
import ch.ivyteam.licence.SignedLicence;

public class LicenceUtil
{
  private static final File CONFIG_DIR = new File("configuration");
  private static final String DEMO_LIC = "demo.lic";

  public static void backupOld(File originalLicence)
  {
    if (!originalLicence.getName().equalsIgnoreCase(DEMO_LIC))
    {
      String bakFileName = originalLicence.getAbsolutePath() + ".bak";
      File bakFile = new File(bakFileName);
      int index = 1;
      while (bakFile.exists())
      {
        bakFile = new File(bakFileName + index);
        index++;
      }
      originalLicence.renameTo(bakFile);
    }
  }

  public static void installAndVerify(File newLicence) throws Exception
  {
    SignedLicence.installLicence(newLicence);
    SignedLicence.verifyLicence();
  }

  public static File uploadFile(UploadedFile uploadedFile) throws IOException, FileNotFoundException
  {
    File newLicence = new File(CONFIG_DIR, uploadedFile.getFileName());

    try (FileOutputStream fos = new FileOutputStream(newLicence);
            InputStream is = uploadedFile.getInputstream())
    {
      IOUtils.copy(is, fos);
    }
    return newLicence;
  }

  public static boolean isCluster()
  {
    return LicenceConstants.VAL_LICENCE_TYPE_ENTERPRISE.equals(SignedLicence.getParam(
            ch.ivyteam.licence.LicenceConstants.PARAM_LICENCE_TYPE));
  }
}