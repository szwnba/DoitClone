.class Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lim/doit/pro/activity/listener/OnLayoutClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSendLogClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SettingsActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/SettingsActivity;)V
    .locals 0

    .prologue
    .line 651
    iput-object p1, p0, Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/SettingsActivity;Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;)V
    .locals 0

    .prologue
    .line 651
    invoke-direct {p0, p1}, Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;-><init>(Lim/doit/pro/activity/SettingsActivity;)V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 655
    const/4 v8, 0x0

    .line 658
    .local v8, "reader":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    .line 659
    const-string v11, "logcat -d DOITIM:D"

    .line 658
    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 660
    .local v7, "mLogcatProc":Ljava/lang/Process;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    .line 661
    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x400

    .line 660
    invoke-direct {v9, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .local v9, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 664
    .local v6, "log":Ljava/lang/StringBuilder;
    const-string v10, "**************start***********"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    :goto_0
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, "line":Ljava/lang/String;
    if-nez v5, :cond_1

    .line 670
    const-string v10, "**************end***********"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 673
    const-string v12, "yyyy-MM-dd HH:mm:ss Z"

    invoke-static {v11, v12}, Lim/doit/pro/utils/DateUtils;->format(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_doit_log .txt"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 672
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "fileName":Ljava/lang/String;
    iget-object v10, p0, Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 675
    const/4 v11, 0x0

    .line 674
    invoke-virtual {v10, v1, v11}, Lim/doit/pro/activity/SettingsActivity;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v3

    .line 676
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/io/FileOutputStream;->write([B)V

    .line 677
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 678
    iget-object v10, p0, Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;->this$0:Lim/doit/pro/activity/SettingsActivity;

    invoke-virtual {v10, v1}, Lim/doit/pro/activity/SettingsActivity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 680
    .local v2, "filePath":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEND"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 681
    .local v4, "i":Landroid/content/Intent;
    const-string v10, "*/*"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 682
    const-string v10, "android.intent.extra.EMAIL"

    .line 683
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    .line 686
    const-string v13, "lily@doitim.com"

    aput-object v13, v11, v12

    .line 682
    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string v10, "android.intent.extra.SUBJECT"

    invoke-virtual {v4, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v10, "android.intent.extra.STREAM"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "file://"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 689
    iget-object v10, p0, Lim/doit/pro/activity/SettingsActivity$OnSendLogClickListener;->this$0:Lim/doit/pro/activity/SettingsActivity;

    .line 690
    const v11, 0x7f0c01b1

    invoke-static {v11}, Lim/doit/pro/activity/utils/ViewUtils;->getText(I)Ljava/lang/String;

    move-result-object v11

    .line 689
    invoke-static {v4, v11}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v11

    invoke-virtual {v10, v11}, Lim/doit/pro/activity/SettingsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 695
    if-eqz v9, :cond_3

    .line 697
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v8, v9

    .line 702
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "log":Ljava/lang/StringBuilder;
    .end local v7    # "mLogcatProc":Ljava/lang/Process;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    return-void

    .line 667
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "log":Ljava/lang/StringBuilder;
    .restart local v7    # "mLogcatProc":Ljava/lang/Process;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 668
    const-string v10, "\r\t"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 692
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "log":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v0

    move-object v8, v9

    .line 693
    .end local v7    # "mLogcatProc":Ljava/lang/Process;
    .end local v9    # "reader":Ljava/io/BufferedReader;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 695
    if-eqz v8, :cond_0

    .line 697
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 698
    :catch_1
    move-exception v0

    .line 699
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 694
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 695
    :goto_3
    if-eqz v8, :cond_2

    .line 697
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 701
    :cond_2
    :goto_4
    throw v10

    .line 698
    :catch_2
    move-exception v0

    .line 699
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 698
    .end local v0    # "e":Ljava/io/IOException;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "fileName":Ljava/lang/String;
    .restart local v2    # "filePath":Ljava/lang/String;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i":Landroid/content/Intent;
    .restart local v5    # "line":Ljava/lang/String;
    .restart local v6    # "log":Ljava/lang/StringBuilder;
    .restart local v7    # "mLogcatProc":Ljava/lang/Process;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v0

    .line 699
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_1

    .line 694
    .end local v1    # "fileName":Ljava/lang/String;
    .end local v2    # "filePath":Ljava/lang/String;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .end local v4    # "i":Landroid/content/Intent;
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "log":Ljava/lang/StringBuilder;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .restart local v9    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "reader":Ljava/io/BufferedReader;
    .restart local v8    # "reader":Ljava/io/BufferedReader;
    goto :goto_3

    .line 692
    .end local v7    # "mLogcatProc":Ljava/lang/Process;
    :catch_4
    move-exception v0

    goto :goto_2
.end method
