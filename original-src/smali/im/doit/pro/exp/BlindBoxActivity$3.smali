.class Lim/doit/pro/exp/BlindBoxActivity$3;
.super Ljava/lang/Object;
.source "BlindBoxActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/exp/BlindBoxActivity;->loadPool()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/exp/BlindBoxActivity;

.field final synthetic val$self:Lim/doit/pro/exp/BlindBoxActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/exp/BlindBoxActivity;Lim/doit/pro/exp/BlindBoxActivity;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lim/doit/pro/exp/BlindBoxActivity$3;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    iput-object p2, p0, Lim/doit/pro/exp/BlindBoxActivity$3;->val$self:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    :try_start_5
    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity$3;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    const-string v2, "doitim.db"

    invoke-virtual {v1, v2}, Lim/doit/pro/exp/BlindBoxActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8f

    .line 176
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_8e

    .line 178
    :try_start_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT uuid, repeat_no, title, attribute, priority, created FROM tasks WHERE completed=0 AND trashed=0 AND deleted=0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lim/doit/pro/exp/BlindBoxActivity$3;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v5}, Lim/doit/pro/exp/BlindBoxActivity;->access$500(Lim/doit/pro/exp/BlindBoxActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 179
    :goto_3a
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_82

    .line 180
    new-instance v4, Lim/doit/pro/exp/BlindBoxActivity$Pick;

    invoke-direct {v4}, Lim/doit/pro/exp/BlindBoxActivity$Pick;-><init>()V

    .line 181
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lim/doit/pro/exp/BlindBoxActivity$Pick;->uuid:Ljava/lang/String;

    .line 182
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lim/doit/pro/exp/BlindBoxActivity$Pick;->repeatNo:Ljava/lang/String;

    .line 183
    const/4 v5, 0x2

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lim/doit/pro/exp/BlindBoxActivity$Pick;->title:Ljava/lang/String;

    .line 184
    const/4 v5, 0x3

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lim/doit/pro/exp/BlindBoxActivity$Pick;->attribute:Ljava/lang/String;

    .line 185
    const/4 v5, 0x4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lim/doit/pro/exp/BlindBoxActivity$Pick;->priority:I

    .line 186
    const/4 v5, 0x5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lim/doit/pro/exp/BlindBoxActivity$Pick;->created:J

    .line 187
    iget-object v5, v4, Lim/doit/pro/exp/BlindBoxActivity$Pick;->title:Ljava/lang/String;

    if-eqz v5, :cond_81

    iget-object v5, v4, Lim/doit/pro/exp/BlindBoxActivity$Pick;->title:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_81

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_81
    goto :goto_3a

    .line 189
    :cond_82
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_85
    .catchall {:try_start_1d .. :try_end_85} :catchall_89

    .line 190
    :try_start_85
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_8f

    :catchall_89
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2
    :try_end_8e
    .catchall {:try_start_85 .. :try_end_8e} :catchall_8e

    .line 192
    :catchall_8e
    move-exception v1

    :cond_8f
    :goto_8f
    nop

    .line 193
    nop

    .line 194
    iget-object v1, p0, Lim/doit/pro/exp/BlindBoxActivity$3;->this$0:Lim/doit/pro/exp/BlindBoxActivity;

    invoke-static {v1}, Lim/doit/pro/exp/BlindBoxActivity;->access$800(Lim/doit/pro/exp/BlindBoxActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lim/doit/pro/exp/BlindBoxActivity$3$1;

    invoke-direct {v2, p0, v0}, Lim/doit/pro/exp/BlindBoxActivity$3$1;-><init>(Lim/doit/pro/exp/BlindBoxActivity$3;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 201
    return-void
.end method
