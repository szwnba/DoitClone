.class public final enum Lcom/evernote/edam/type/ReminderEmailConfig;
.super Ljava/lang/Enum;
.source "ReminderEmailConfig.java"

# interfaces
.implements Lcom/evernote/thrift/TEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/evernote/edam/type/ReminderEmailConfig;",
        ">;",
        "Lcom/evernote/thrift/TEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/evernote/edam/type/ReminderEmailConfig;

.field public static final enum DO_NOT_SEND:Lcom/evernote/edam/type/ReminderEmailConfig;

.field public static final enum SEND_DAILY_EMAIL:Lcom/evernote/edam/type/ReminderEmailConfig;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 24
    new-instance v0, Lcom/evernote/edam/type/ReminderEmailConfig;

    const-string v1, "DO_NOT_SEND"

    invoke-direct {v0, v1, v3, v2}, Lcom/evernote/edam/type/ReminderEmailConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/type/ReminderEmailConfig;->DO_NOT_SEND:Lcom/evernote/edam/type/ReminderEmailConfig;

    .line 25
    new-instance v0, Lcom/evernote/edam/type/ReminderEmailConfig;

    const-string v1, "SEND_DAILY_EMAIL"

    invoke-direct {v0, v1, v2, v4}, Lcom/evernote/edam/type/ReminderEmailConfig;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/evernote/edam/type/ReminderEmailConfig;->SEND_DAILY_EMAIL:Lcom/evernote/edam/type/ReminderEmailConfig;

    .line 23
    new-array v0, v4, [Lcom/evernote/edam/type/ReminderEmailConfig;

    sget-object v1, Lcom/evernote/edam/type/ReminderEmailConfig;->DO_NOT_SEND:Lcom/evernote/edam/type/ReminderEmailConfig;

    aput-object v1, v0, v3

    sget-object v1, Lcom/evernote/edam/type/ReminderEmailConfig;->SEND_DAILY_EMAIL:Lcom/evernote/edam/type/ReminderEmailConfig;

    aput-object v1, v0, v2

    sput-object v0, Lcom/evernote/edam/type/ReminderEmailConfig;->$VALUES:[Lcom/evernote/edam/type/ReminderEmailConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/evernote/edam/type/ReminderEmailConfig;->value:I

    .line 31
    return-void
.end method

.method public static findByValue(I)Lcom/evernote/edam/type/ReminderEmailConfig;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    .line 51
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 47
    :pswitch_0
    sget-object v0, Lcom/evernote/edam/type/ReminderEmailConfig;->DO_NOT_SEND:Lcom/evernote/edam/type/ReminderEmailConfig;

    goto :goto_0

    .line 49
    :pswitch_1
    sget-object v0, Lcom/evernote/edam/type/ReminderEmailConfig;->SEND_DAILY_EMAIL:Lcom/evernote/edam/type/ReminderEmailConfig;

    goto :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/evernote/edam/type/ReminderEmailConfig;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/evernote/edam/type/ReminderEmailConfig;

    return-object v0
.end method

.method public static values()[Lcom/evernote/edam/type/ReminderEmailConfig;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/evernote/edam/type/ReminderEmailConfig;->$VALUES:[Lcom/evernote/edam/type/ReminderEmailConfig;

    invoke-virtual {v0}, [Lcom/evernote/edam/type/ReminderEmailConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/evernote/edam/type/ReminderEmailConfig;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/evernote/edam/type/ReminderEmailConfig;->value:I

    return v0
.end method
