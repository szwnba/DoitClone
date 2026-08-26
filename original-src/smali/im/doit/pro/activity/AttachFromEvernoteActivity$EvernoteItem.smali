.class Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;
.super Ljava/lang/Object;
.source "AttachFromEvernoteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EvernoteItem"
.end annotation


# instance fields
.field private created:J

.field private guid:Ljava/lang/String;

.field private notebookId:Ljava/lang/String;

.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0
    .param p2, "guid"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "created"    # J
    .param p6, "notebookId"    # Ljava/lang/String;

    .prologue
    .line 617
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-object p2, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->guid:Ljava/lang/String;

    .line 619
    iput-object p3, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->title:Ljava/lang/String;

    .line 620
    iput-wide p4, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->created:J

    .line 621
    iput-object p6, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->notebookId:Ljava/lang/String;

    .line 622
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->guid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 612
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->title:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)J
    .locals 2

    .prologue
    .line 613
    iget-wide v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->created:J

    return-wide v0
.end method

.method static synthetic access$3(Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$EvernoteItem;->notebookId:Ljava/lang/String;

    return-object v0
.end method
